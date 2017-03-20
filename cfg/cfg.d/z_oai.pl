$c->{oai}->{v2}->{output_plugins}->{oai_dc} = "OAI_DC_Ext";

if(defined $c->{oai}->{custom_sets})
{
	@{ $c->{oai}->{custom_sets} } = (@{ $c->{oai}->{custom_sets} }, (
		{
			spec => "openaire",
			name => "OpenAire",
			filters => [
				{ meta_fields => ["fp7_project" ], value => "yes", },
			]
		},
	));
}
else
{
	my $custom_sets = {};

	$custom_sets = [
		{
			spec => "rji_test",
			name => "Rob Test Set no existing CS",
			filters => [
				{ meta_fields => ["full_text_status" ], value => "public", },
			]
		},
	];
	$c->{oai}->{custom_sets} = $custom_sets;
}
