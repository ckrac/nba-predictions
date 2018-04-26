class PredictionsController < ApiController
  before_action :require_login, except: [:index, :show]

  def index
    predictions = Prediction.all
    render json: { predictions: predictions }
  end

  def show
    prediction = Prediction.find(params[:id])
    prediction_user = prediction.user
    render json: { prediction: prediction, username: prediction_user.username }
  end

  def create
    prediction = Prediction.new(prediction_params)
    prediction.user = current_user

    if prediction.save
      render json: {
        message: 'ok',
        prediction: prediction,
      }
    else
      render json: {message: 'Could not create prediction'}
    end
  end

  private
  def prediction_params
    params.require(:prediction).permit(:name, :description)
  end

end
