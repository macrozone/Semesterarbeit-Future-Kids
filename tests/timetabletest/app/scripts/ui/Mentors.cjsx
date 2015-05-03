React = require "react"

Select = require('react-select')


GenderSelect = React.createClass
	render: ->
		<div className=@props.className>
			<p>Geschlecht: </p>
			<select>
				<option value=""></option>
				<option value="m">Männlich</option>
				<option value="f">Weiblich</option>
			</select>
		</div>

EctsSelect = React.createClass
	render: ->
		<div className=@props.className>
			<p>ECTS: </p>
			<select>
				<option value=""></option>
				<option value="yes">Ja</option>
				<option value="no">Nein</option>
			</select>
		</div>

SchoolSelect = React.createClass
	render: ->
		options = (value: _id, label: school.name for _id, school of @props.schools)
		<div className=@props.className>
			<p>Einsatzort: </p>
			<Select
				name="schools" 
				options=options 
				multi=true 
				/>
		</div>

AvailabilityFilter = React.createClass
	render: ->
		<div className=@props.className>
			<p>Verfügbarkeit: </p>
			<select>
				<option value="no-child">Betreut noch kein Kind</option>
				<option value="one-children">Betreut bereits ein Kind</option>
				<option value="two-children">Betreut bereits zwei Kinder</option>
			</select>
		</div>


module.exports = React.createClass
	
	getInitialState: ->
		activeMentorIds: []
	getActiveMentors: -> @getMentorsWithIds @state.activeMentorIds

	getMentorsWithIds: (ids) ->
		(@props.mentors[_id] for _id in ids)

	onChange: (mentors) ->
		if mentors.length > 0
			activeMentorIds = mentors.split ","
		else
			activeMentorIds = []
		@setState {activeMentorIds}

		@props.onChange? @getMentorsWithIds activeMentorIds
	
	render: ->
		options = (value: _id, label: mentor.name for _id, mentor of @props.mentors)
		<div>
			<div className="row">
				<AvailabilityFilter className="col-sm-3"  />
				<GenderSelect className="col-sm-3" />
			
				<SchoolSelect className="col-sm-3" schools=@props.schools />
				<EctsSelect className="col-sm-3"  />
			
			</div>
			<p><strong>Gefilterte mentoren: </strong>
			{
				for option in options
					<span>{option.label}, </span>

			} 
			</p>
			<p>Mentoren für den Vergleich:</p>
			<Select key="mentors-select" 
				value={@state.activeMentorIds} 
				name="mentors" 
				options=options 
				multi=true 
				onChange={@onChange}/>
		</div>