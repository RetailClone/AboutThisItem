import React from 'react';
import RepoList from './RepoList.jsx'

const ListDisplay = ({ id, repoName, forks, url, owner }) => {
  return (
    <div>
      <p>reponame: {repoName}</p>
      <p>repo owner: {owner}</p>
      <p>forks: {forks}</p>
      <a href={url}>{url}</a>
      <hr></hr>
    </div>
  )
}

export default ListDisplay;