<?php
$teste = 'Hello';
echo $teste . ' World!' . "\n"; # => Hello World!

$teste .= ' World!'; 
echo $teste . "\n"; # => Hello World!


$teste = str_replace(' World!', '', $teste);
echo $teste . "\n"; # => Hello

echo "$teste World!" . "\n"; # => Hello World!
echo "{$teste} World!" . "\n"; # => Hello World!