# Add extra metadata fields to eprints for OpenAIRE
@{ $c->{fields}->{eprint} } = ( @{ $c->{fields}->{eprint} }, (
	{
	    'name' => 'fp7_project',
		'type' => 'set',
		'options' => [
			   'yes',
			   'no'
			 ],
		'input_style' => 'radio',
	},
	{
	    'name' => 'fp7_project_fundingprogramme',
		'type' => 'set',
		'options' => [
			   'FP7',
			   'H2020'
			 ],
		'input_style' => 'radio',
	},	
	{
		'name' => 'fp7_project_id',
		'type' => 'text',
		'multiple' => 0,
	},
	{
		'name' => 'fp7_project_name',
		'type' => 'text',
	},
	{
		'name' => 'fp7_project_acronym',
		'type' => 'text',
	}, 
	{
		'name' => 'fp7_type',
		'type' => 'set',
		'options' => [
			'info:eu-repo/semantics/article',
			'info:eu-repo/semantics/bachelorThesis',
			'info:eu-repo/semantics/masterThesis',
			'info:eu-repo/semantics/doctoralThesis',
			'info:eu-repo/semantics/book',
			'info:eu-repo/semantics/bookPart',
			'info:eu-repo/semantics/review',
			'info:eu-repo/semantics/conferenceObject',
			'info:eu-repo/semantics/lecture',
			'info:eu-repo/semantics/workingPaper',
			'info:eu-repo/semantics/preprint',
			'info:eu-repo/semantics/report',
			'info:eu-repo/semantics/annotation',
			'info:eu-repo/semantics/contributionToPeriodical',
			'info:eu-repo/semantics/patent',
			'info:eu-repo/semantics/other',
		],
		'input_rows' => 1
	},
	{
		'name' => 'access_rights',
		'type' => 'set',
		'options' => [
			'info:eu-repo/semantics/closedAccess',
			'info:eu-repo/semantics/embargoedAccess',
			'info:eu-repo/semantics/restrictedAccess',
			'info:eu-repo/semantics/openAccess',
		],
		'input_rows' => 1
	},
));
