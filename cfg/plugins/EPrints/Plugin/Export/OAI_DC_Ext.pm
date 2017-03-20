package EPrints::Plugin::Export::OAI_DC_Ext;

use base qw/ EPrints::Plugin::Export::OAI_DC /;

use strict;

sub xml_dataobj
{
	my( $plugin, $dataobj ) = @_;

	my $main_dc_plugin = $plugin->{session}->plugin( "Export::DC_Ext" );
	
	my $data = $main_dc_plugin->convert_dataobj( $dataobj );

	my $dc = $plugin->{session}->make_element(
        	"oai_dc:dc",
		"xmlns:oai_dc" => "http://www.openarchives.org/OAI/2.0/oai_dc/",
        	"xmlns:dc" => "http://purl.org/dc/elements/1.1/",
        	"xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance",
		"xsi:schemaLocation" =>
 	"http://www.openarchives.org/OAI/2.0/oai_dc/ http://www.openarchives.org/OAI/2.0/oai_dc.xsd" );

	# turn the list of pairs into XML blocks (indented by 8) and add them
	# them to the DC element.
	foreach( @{$data} )
	{
		$dc->appendChild(  $plugin->{session}->render_data_element( 8, "dc:".$_->[0], $_->[1] ) );
		# produces <key>value</key>
	}

	return $dc;
}

1;
