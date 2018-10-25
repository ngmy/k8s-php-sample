<?php

echo 'Hello, my.web.jp!';

echo '<br>';

$contents = file_get_contents('http://service-my-api');

$data = json_decode($contents, true);

echo $data['message'];
