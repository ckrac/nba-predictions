import React, { Component } from 'react';

import Auth from '../modules/Auth';

class Dashboard extends Component {
  constructor() {
    super();
    this.state = {
      myPredictions: null,
      predictionsLoaded: false,
    }
  }

  componentDidMount() {
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

  render() {
    return (
      <div className="dash">
        {(this.state.predictionsLoaded)
          ? this.renderPredictions()
          : <p>Loading...</p>}
      </div>
    )
  }
}

export default Dashboard;