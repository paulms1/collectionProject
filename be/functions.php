<?php



function getAllRecords($db)
{
    $query = $db->prepare("SELECT `band`, `song`, `year`, `genre`, `link`, `image` FROM `record_collection`;");
    $query->execute();
    $result = $query ->fetchAll();
    return $result;
};

function displayRecords(array $records): string
{
    $result='';
    foreach ($records as $record)
    {
      $result.= "<div class='surround'>
            <div class='floater' id='band'>
                <img src='" . $record['image'] . "'>
            </div>

            <div class='floater' id='info'>
                <div class='list'>
                    <ul>
                        <li>Artist: " . $record['band'] . "</li>
                        <li>Song title: " . $record['song'] . "</li>
                        <li>Year of release: " . $record['year'] . "</li>
                        <li>Genre: " . $record['genre'] . "</li>
                        <li><a href='" . $record['link'] . "'>Listen on Youtube</a></li>
                    </ul>
                </div>
            </div>
        </div>";
    };
    return $result;
};