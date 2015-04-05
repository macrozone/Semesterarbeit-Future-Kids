React = require("react")
moment = require "moment"

Thead = React.createClass
	render: ->
		<thead>
			<tr>
				<th>Time</th>
				{
					for day in @props.days
						<th key=day>{day}</th> 
				}
			</tr>
		</thead>

Block =  React.createClass 
	getInitialState: ->
		active: no
	toggleState: -> 
		@setState active: !@state.active
		event.stopPropagation()
	render: ->
		stateClass = if @state.active then "active" else ""
		<td onClick=@toggleState className=stateClass>
		{
			for mentor in @props.activeMentors
				<p>{mentor.name} </p>
		}
		</td>


Tbody = React.createClass
	getMentorsFor: (day, time)->
		mentors = []
		for mentor in @props.activeMentors
			if mentor.timetable?[day]? and time in mentor.timetable[day]
				mentors.push mentor
		mentors




	render: ->
		<tbody>
		{
			for time in @props.times
				<tr key=time>
					<th>{time}</th>
					{
						for day in @props.days
							<Block key=day day=day time=time activeMentors={@getMentorsFor(day, time)} />
					}
				</tr>
		}	
		</tbody>


module.exports = React.createClass
	times: ->
		startMoment = moment()
		startMoment.set "hours", @props.start.h
		startMoment.set "minutes", @props.start.m
		endMoment = moment startMoment
		endMoment.set "hours", @props.end.h
		endMoment.set "minutes", @props.end.m

		timeMoment = moment startMoment

		while endMoment.diff(timeMoment) >0
			time = timeMoment.format "HH:mm"
			timeMoment.add @props.interval, "minutes"
			time

	render: ->
		<table className="table timetable">
			<Thead days=@props.days />
			<Tbody days=@props.days times=@times() activeMentors={@props.activeMentors} />
		</table>
