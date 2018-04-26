import React, { Component } from 'react';

import Auth from '../modules/Auth';
import AddPredictionForm from './AddPredictionForm';

class Dashboard extends Component {
  constructor() {
    super();
    this.state = {
      myPredictions: null,
      predictionsLoaded: false,
    }
  }

  componentDidMount() {
    this.getUserPredictions();
  }

  getUserPredictions = () => {
    fetch('/profile', {
      method: 'GET',
      headers: {
        token: Auth.getToken(),
        'Authorization': `Token ${Auth.getToken()}`,
      }
    }).then(res => res.json())
      .then(res => {
        this.setState({
          myPredictions: res.predictions,
          predictionsLoaded: true,
        })
      }).catch(err => {
        console.log(err);
      })
  }

  renderPredictions = () => {
    return this.state.myPredictions.map(prediction => {
      return (
        <div className="prediction" key={prediction.id}>
          <h2>{prediction.name}</h2>
          <p>{prediction.description}</p>
        </div>
      )
    })
  }

  addPrediction = (e, data) => {
    fetch('/predictions', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        token: Auth.getToken(),
        'Authorization': `Token ${Auth.getToken()}`,
      },
      body: JSON.stringify({
        prediction: data,
      })
    }).then(res => res.json())
      .then(res => {
        console.log(res);
        this.getUserPredictions;
      }).catch(err => console.log(err))
  }

  render() {
    return (
      <div className="dash">
        <AddPredictionForm addPrediction={this.addPrediction} />
        {(this.state.predictionsLoaded)
          ? this.renderPredictions()
          : <p>Loading...</p>}
      </div>
    )
  }
}

export default Dashboard;