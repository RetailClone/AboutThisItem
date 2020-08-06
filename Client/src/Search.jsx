import React from 'react';

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      term: ''
    }

    this.onChange = this.onChange.bind(this);
  }

  onChange(e) {
    this.setState({
      term: e.target.value
    });
  }

  render() {
    return (
      <div>
        <h4>Add more repos!</h4>
      Enter a github username: <input value={this.state.term} onChange={this.onChange} />
        <button onClick={() => this.props.onSearch(event, this.state.term)}> Add Repos </button>
      </div>
    )
  }
}

export default Search;