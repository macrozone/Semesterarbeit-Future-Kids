###*
@jsx React.DOM
###
React = window.React = require("react")
TimeTable = require "./ui/TimeTable.cjsx"
Mentors = require "./ui/Mentors.cjsx"

DAYS = ["Mon", "Tue", "Wed", "Thu", "Fri"]
INTERVAL = 30 # in minutes
START = h: 13, m:0
END = h:19, m:30 # exclusive
mentors = 
  1:
    _id: "1", name: "Hans Muster", timetable: 
      Mon: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30"]
      Tue: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30"]
      Wed: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30"]
  2: 
    _id: "2", name: "Iris Gleichen", timetable: 
      Fri: ["17:00", "17:30", "18:00", "18:30"]
      Mon: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30"]
      Wed: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30"]
  3:
    _id: "3", name: "Rainer Zufall", timetable: 
      Mon: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30"]
      Thu: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30"]
      Fri: ["16:00", "16:30","17:00", "17:30", "18:00", "18:30", "19:00"]
  
onChange = ->
  console.log arguments


App = React.createClass
  getInitialState: ->
    activeMentors: (mentor for id, mentor of mentors)

  onChange: (activeMentors) ->
    if activeMentors.length > 0
      @setState {activeMentors}
    else
      @setState activeMentors: (mentor for id, mentor of mentors)

  render: ->
    <div className="app">
      <Mentors mentors=mentors onChange=@onChange />
      <TimeTable 
        days=DAYS
        interval=INTERVAL 
        start=START end=END
        activeMentors=@state.activeMentors
        />
    </div>

app = <App />
  
React.render app, document.getElementById "app"
