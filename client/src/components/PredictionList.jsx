import React, { Component } from 'react';

class PredictionList extends Component {
  constructor() {
    super();
    this.state = {
      predictionList: null,
      predictionListLoaded: false,
    }
  }

  componentDidMount(){
    fetch('/predictions')
      .then(res => res.json())
      .then(res => {
        this.setState({
          predictionList: res.predictions,
          predictionListLoaded: true,
        })
      }).catch(err => console.log(err));
  }

  renderPredictions = () => {
    return this.state.predictionList.map(prediction => {
      return (
        <div className="prediction" key={prediction.id}>
          <h2>{prediction.name}</h2>
          <p>{prediction.description}</p>
        </div>
      )
    })
  }

  render() {
    return (
      <div className="prediction-list">
        {(this.state.predictionListLoaded)
          ? this.renderPredictions()
          : <p>Loading...</p>}
      </div>
    )
  }
}

export default PredictionList;