import React, { Component } from 'react';
import { connect } from 'react-redux';

class StatusBox extends Component {
  constructor(props) {
    super(props)

    this.state = { status: "Have not gotten the roomba state yet" }
  }
  render() {
    return (
      <pre>
      { this.state.status }
      </pre>
    );
  }
}

function mapStateToProps(state, props) {
  return {
    status: state.status
  };
}

function mapDispatchToProps(dispatch) {
  return {
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(StatusBox);
