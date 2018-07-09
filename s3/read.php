<?php
require 'include/aws.phar';


use Aws\S3\S3Client;
use Aws\S3\Exception\S3Exception;

$bucket = 'testechicosqs';
$keyname = 'testechico.txt';
                        
$s3 = new S3Client([
    'version' => 'latest',
    'region'  => 'us-east-1'
]);

try {
    // Get the object.
    $result = $s3->getObject([
        'Bucket' => $bucket,
        'Key'    => $keyname
    ]);

    // Display the object in the browser.
    header("Content-Type: text/plain");
    echo $result['Body'];
} catch (S3Exception $e) {
    echo $e->getMessage() . PHP_EOL;
}
?>

