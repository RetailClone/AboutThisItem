import React from 'react';
import ListDisplay from './ListDisplay.jsx';

const RepoList = (props) => {

  return (
    <div>
      <h4> Repo List Component </h4>
    There are {props.repos.length} repos.
      <hr></hr>
      <div>
        {props.repos.map((repo, idx) => {
          return <ListDisplay key={idx} repoName={repo.repo_name} forks={repo.forks} url={repo.repoURL} owner={repo.owner_login} />
        }
        )}
      </div>
    </div>
  )
}


export default RepoList;