import React from 'react';
import ReactDOM from 'react-dom';

class App extends React.Component {
  constructor() {
    super();
    this.state = {}

  }

  render() {
    return (
    <div>Hello Wolrld!</div>
      )
  }
}

ReactDOM.render(<App />, document.getElementById('app'));