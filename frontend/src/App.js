import React, { Component } from 'react';
import { Route } from "react-router-dom";

import { Header } from './components/header';
import { LoginPanel } from './components/loginPanel';
import { FormList } from './components/forms/formList';
import { UploadForm } from './components/forms/uploadForm';
import './App.css';


class App extends Component {
  render() {
    return (
      <div className="App">
        <Header />
        <Route exact path="/" component={FormList} />
        <Route path="/login" component={LoginPanel} />
        <Route path="/upload-form" component={UploadForm} />
      </div>
    );
  }
}

export default App;