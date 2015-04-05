React = require "react"

Select = require('react-select')


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
			<p><span>Verfügbare mentoren:</span>
			{
				for option in options
					<span>{option.label}, </span>

			} 
			</p>

			<Select key="mentors-select" 
				value={@state.activeMentorIds} 
				name="mentors" 
				options=options 
				multi=true 
				onChange={@onChange}/>
		</div>