React = require("react")
Timer = React.createClass(
  getInitialState: ->
    secondsElapsed: 0

  tick: ->
    @setState secondsElapsed: @state.secondsElapsed + 1

  componentDidMount: ->
    @interval = setInterval(@tick, 1000)


  componentWillUnmount: ->
    clearInterval @interval


  render: ->
    <div>Seconds Elapsed: {@state.secondsElapsed}</div>

)
module.exports = Timer
