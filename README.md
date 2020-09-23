# AboutThisItem

This component renders a specific description of the selected item, product specifications of the selected item, highlights of the selected item, shipping and returns information of the selected item, and a questions & answers section where the user can see previously asked question(s), post an answer, and ask their own question about the item.

Here is a list of things that I did with this component:
* Collaborated with four other software engineers in a remote, Agile environment, making use of a Trello board to track tickets and tasks
* Implemented React Hooks to separate concerns and improve the architecture of the app
* Implemented RESTful API routes through a Node.js/Express server to filter product data
* Used Moment to dynamically display time data on user-submitted questions and answers
* Prevented XSS attacks in user text inputs
* Built a mySQL database to store product data for 100 sample products as well as to allow for additions of questions and answers entered by the user about each product
* Built a proxy server and deployed the full stack app to an AWS EC2 instance


# AboutThisItem is a microservice component of:

## Mock Target
Mock Target is a web application designed to mimic the functionality and looks of the Target item detail page.

This Application was built by a team of five Full Stack Software Engineers from the Hack Reactor, Austin 50th Cohort (HRATX50).

## Overall Page/Product View Demo
![Target1](https://github.com/RetailClone/AboutThisItem/blob/master/Overall.gif)

## Searchbar Demo
![Target2](https://github.com/RetailClone/AboutThisItem/blob/master/searchbar.gif)

## About This Item Demo
![Target3](https://github.com/RetailClone/AboutThisItem/blob/master/AboutThisItem.gif)

## Frequently Bought Together Demo
![Target4](https://github.com/RetailClone/AboutThisItem/blob/master/FreqBought.gif)

## Recommended Items Demo
![Target5](https://github.com/RetailClone/AboutThisItem/blob/master/recommended.gif)

## Reviews Demo
![Target5](https://github.com/RetailClone/AboutThisItem/blob/master/reviews.gif)

## Dev Team

  * [Mariella Arias]: Frequently Bought Together and Recommended Items
  * [Andrew Binkard]: About This Item
  * [Steven Brotherton]: Header (Searchbar) and Footer
  * [Rahul Chauhan]: Product Reviews
  * [Belle Nguyen]: Product View and Shipping

## Tech Stack 
*Mock Target* was built primarily with ReactJS and CSS modules on the front end and Node/Express on the backend. Other key technologies used are listed below: 

### Technologies

<table style="width:50%">
  <tr>
    <td class="subheading">Front-end</td>
    <td><a href="https://reactjs.org/">React</a></td>
    <td><a href="https://create-react-app.dev/docs/adding-a-css-modules-stylesheet/">CSS modules</a></td>
    <td><a href="https://github.com/airbnb/javascript">AirBnB style guide</a></td>
  </tr>
  <tr rowspan="2">
    <td class="subheading">Back-end</td>
    <td><a href="http://nodejs.org">Node.js</a></td> 
    <td><a href="http://expressjs.com">Express</a></td>
    <td><a href="https://www.mysql.com/">mySQL</a></td>
  </tr>
  <tr>
      <td class="subheading">Dev Tools</td>
      <td><a href="https://webpack.js.org/">Webpack</a></td>
      <td><a href="https://babeljs.io/">Babel</a></td>
      <td><a href="https://www.npmjs.com/">NPM</a></td>
    </tr>
 <tr>
      <td class="subheading">Deployment</td>
      <td><a href="https://aws.amazon.com/ec2/">AWS EC2</a></td>
    </tr>
</table>

### Workflow
Our team managed workflow and responsibilities by utilizing Agile methodology. Trello was used to to keep track of tickets. With <a href="https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow">git feature branch workflow</a>, our team managed each of our separate components. When it came time to deploy, we each deployed our separate components and built a proxy server which rendered the separate components together, thereby making use of Service Oriented Architecture. 

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [Mariella Arias]: <https://github.com/Mariella-Arias>
   [Andrew Binkard]: <https://github.com/andrewbinkard>
   [Steven Brotherton]: <https://github.com/SMbrobot10>
   [Rahul Chauhan]: <https://github.com/RahulJung>
   [Belle Nguyen]: <https://github.com/BelleNg>

