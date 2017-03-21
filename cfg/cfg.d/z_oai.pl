if(defined $c->{oai}->{custom_sets})
{
	@{ $c->{oai}->{custom_sets} } = (@{ $c->{oai}->{custom_sets} }, (
		{
			spec => "openaire",
			name => "OpenAire",
			filters => [
				{ meta_fields => ["eu_project" ], value => "yes", },
			]
		},
	));
}

# don't use Export::OAI_DC for oai_dc metadataPrefix...
$c->{plugins}->{"Export::OAI_DC"}->{params}->{metadataPrefix} = undef;
# ...use Export::OAI_DC_Ext instead
$c->{plugins}->{"Export::OAI_DC_Ext"}->{params}->{metadataPrefix} = "oai_dc";
