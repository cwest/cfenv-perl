use JSON::XS;

sub {
  my $env = shift;
  return [
    200,
    [ 'Content-Type' => 'application/json' ],
    [
      encode_json {
        instance => $ENV{CF_INSTANCE_INDEX},
      },
    ],
  ]
}
