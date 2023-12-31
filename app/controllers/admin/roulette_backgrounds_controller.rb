class Admin::RouletteBackgroundsController < Admin::AdminController
  load_and_authorize_resource

  def initialize(*params)
    super(*params)

    @sub_menu=t(:submenu_roulette_background)
    @controller_name=t('activerecord.models.roulette_background')
  end

  def index
    unless params[:per_page].present?
      params[:per_page]=10
    end

    if params[:format]=='xls'
      params[:page]=nil
      params[:per_page]=50000
    end

    @roulette_backgrounds = RouletteBackground.order('id desc').page(params[:page]).per(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendances }
    end
  end

  def edit
    @roulette_background = RouletteBackground.find(params[:id])
  end

  def show
    @roulette_background = RouletteBackground.find(params[:id])
  end

  def create
    @roulette_background = RouletteBackground.create(params[:roulette_background])

    respond_to do |format|
      if @roulette_background.save
        format.html { redirect_to admin_roulette_backgrounds_path(@roulette_background),:notice => @controller_name +t(:message_success_insert)  }
        format.json { render :json => @roulette_background, :status => :created, :location => @bank }
      else
        format.html { render :action => "new" }
        format.json { render :json => @roulette_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @roulette_background = RouletteBackground.find(params[:id])

    respond_to do |format|
      if @roulette_background.update_attributes(params[:roulette_background])
        format.html { redirect_to admin_roulette_background_path(@roulette_background), :notice => @controller_name +t(:message_success_insert)}
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @roulette_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @roulette_background = RouletteBackground.find(params[:id])
    @roulette_background.destroy

    respond_to do |format|
      format.html { redirect_to admin_roulette_backgrounds_path }
      format.json { head :no_content }
    end
  end
end
