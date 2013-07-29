class PropertiesController < GroupDataController
  def index
    @properties = current_group.properties.includes(:category).paginate(:page => params[:page], :order =>"name")
    @properties.map { |prop| prop.get_infos } unless params[:plain]
    @properties
  end

  def dict
    @all_props =  Hash.new
    current_group.properties.includes(:category).find_each(:batch_size => 500) do |prop|
      @all_props[prop.name] = prop.id
    end
    render :json => @all_props.to_json.html_safe
  end

  def show
    @property = current_group.properties.find(params[:id])
    @values, @params = @property.lings_properties.includes(:ling).alpha_paginate(params[:letter]){|lp| lp.ling.name}
  end

  def new
    @property = Property.new do |p|
      p.group = current_group
      p.creator = current_user
    end
    authorize! :create, @property

    @categories = get_categories
  end

  def edit
    @property = current_group.properties.find(params[:id])
    authorize! :update, @property

    @categories = get_categories
  end

  def create
    @property = Property.new(params[:property]) do |property|
      property.group = current_group
      property.creator = current_user
    end
    authorize! :create, @property

    if @property.save
      redirect_to([current_group, @property],
                  :notice => (current_group.property_name + ' was successfully created.'))
    else
      @categories = get_categories
      render :action => "new"
    end
  end

  def update
    @property = current_group.properties.find(params[:id])
    authorize! :update, @property

    if @property.update_attributes(params[:property])
      redirect_to([current_group, @property],
                  :notice => (current_group.property_name + ' was successfully updated.'))
    else
      @categories = get_categories
      render :action => "edit"
    end
  end

  def destroy
    @property = current_group.properties.find(params[:id])
    authorize! :destroy, @property

    @property.destroy

    redirect_to(group_properties_url(current_group))
  end

  private

  def get_categories
    {:depth_0 => current_group.categories.at_depth(0),
     :depth_1 => current_group.categories.at_depth(1) }
  end
end
