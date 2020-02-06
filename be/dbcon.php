<?php
/*
 * Creates connection to database
 *
 * @return $db MySql db connection
 */
function connectToDb()
{
    $db = new PDO('mysql:host=db; dbname=paul_collection', 'root', 'password');
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $db;
}