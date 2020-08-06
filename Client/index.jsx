import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import Search from './components/Search.jsx';
import RepoList from './components/RepoList.jsx';
import ListDisplay from './components/ListDisplay.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      repos: []
    }
    this.search = this.search.bind(this);
    this.setRepos = this.setRepos.bind(this);
    this.top25 = this.top25.bind(this);
  }

  setRepos(data) {
    this.setState({ repos: data });
  }

  componentDidMount() {
    this.top25()
  }

  top25() {
    $.ajax({
      type: 'GET',
      url: 'repos',
      success: this.setRepos
    })
  }

  search(event, term) {
    $.ajax({
      type: 'POST',
      url: '/repos',
      data: JSON.stringify({ term: term }),
      contentType: 'application/json',
      success: this.top25
    })
  }

  render() {
    return (<div>
      <h1>Github Fetcher</h1>
      <Search repos={this.state.repos} onSearch={this.search} />
      <RepoList repos={this.state.repos} />
    </div>)
  }
}

ReactDOM.render(<App />, document.getElementById('app'));