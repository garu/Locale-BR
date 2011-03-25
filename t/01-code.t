use strict;
use warnings;

use Test::More tests => 2708;

use Locale::BR ':all';

sub permute_code {
    my $code = shift;
    my $uclast = $code;
    $uclast =~ s/(\w)$/\u$1/;
    return ( $code, ucfirst $code, uc $code, $uclast );
}

can_ok( 'Locale::BR', 'all_state_codes');
can_ok( 'Locale::BR', 'all_state_names');
can_ok( 'Locale::BR', 'state2code');
can_ok( 'Locale::BR', 'code2state');

foreach (permute_code('ac')) {
    is( code2state($_), 'Acre', 'checking ac' );
}

foreach (permute_code('al')) {
    is( code2state($_), 'Alagoas', 'checking al' );
}

foreach (permute_code('ap')) {
    is( code2state($_), 'Amapá', 'checking ap' );
}

foreach (permute_code('am')) {
    is( code2state($_), 'Amazonas', 'checking am' );
}

foreach (permute_code('ba')) {
    is( code2state($_), 'Bahia', 'checking ba' );
}

foreach (permute_code('ce')) {
    is( code2state($_), 'Ceará', 'checking ce' );
}

foreach (permute_code('df')) {
    is( code2state($_), 'Distrito Federal', 'checking df' );
}

foreach (permute_code('es')) {
    is( code2state($_), 'Espírito Santo', 'checking es' );
}

foreach (permute_code('go')) {
    is( code2state($_), 'Goiás', 'checking go' );
}

foreach (permute_code('ma')) {
    is( code2state($_), 'Maranhão', 'checking ma' );
}

foreach (permute_code('mt')) {
    is( code2state($_), 'Mato Grosso', 'checking mt' );
}

foreach (permute_code('ms')) {
    is( code2state($_), 'Mato Grosso do Sul', 'checking ms' );
}

foreach (permute_code('mg')) {
    is( code2state($_), 'Minas Gerais', 'checking mg' );
}

foreach (permute_code('pa')) {
    is( code2state($_), 'Pará', 'checking pa' );
}

foreach (permute_code('pb')) {
    is( code2state($_), 'Paraíba', 'checking pb' );
}

foreach (permute_code('pr')) {
    is( code2state($_), 'Paraná', 'checking pr' );
}

foreach (permute_code('pe')) {
    is( code2state($_), 'Pernambuco', 'checking pe' );
}

foreach (permute_code('pi')) {
    is( code2state($_), 'Piauí', 'checking pi' );
}

foreach (permute_code('rj')) {
    is( code2state($_), 'Rio de Janeiro', 'checking rj' );
}

foreach (permute_code('rn')) {
    is( code2state($_), 'Rio Grande do Norte', 'checking rn' );
}

foreach (permute_code('rs')) {
    is( code2state($_), 'Rio Grande do Sul', 'checking rs' );
}

foreach (permute_code('ro')) {
    is( code2state($_), 'Rondônia', 'checking ro' );
}

foreach (permute_code('rr')) {
    is( code2state($_), 'Roraima', 'checking rr' );
}

foreach (permute_code('sc')) {
    is( code2state($_), 'Santa Catarina', 'checking sc' );
}

foreach (permute_code('sp')) {
    is( code2state($_), 'São Paulo', 'checking sp' );
}

foreach (permute_code('se')) {
    is( code2state($_), 'Sergipe', 'checking se' );
}

foreach (permute_code('to')) {
    is( code2state($_), 'Tocantins', 'checking to' );
}

my %codes = (
'AC' => 1,
'AL' => 1,
'AP' => 1,
'AM' => 1,
'BA' => 1,
'CE' => 1,
'DF' => 1,
'ES' => 1,
'GO' => 1,
'MA' => 1,
'MT' => 1,
'MS' => 1,
'MG' => 1,
'PA' => 1,
'PB' => 1,
'PR' => 1,
'PE' => 1,
'PI' => 1,
'RJ' => 1,
'RN' => 1,
'RS' => 1,
'RO' => 1,
'RR' => 1,
'SC' => 1,
'SP' => 1,
'SE' => 1,
'TO' => 1,
);

foreach my $c ('aa'..'zz') {
    next if $codes{uc $c};
    foreach (permute_code($c)) {
        is( code2state($_), undef, "checking $_" );
    }
}
