<?php

require_once '../be/functions.php';

use PHPUnit\Framework\TestCase;

class FunctionsTests extends TestCase
{
    public function testSuccessDisplayRecords()
    {
        $expected = "<div class='surround'>
            <div class='floater' id='band'>
                <img src='joyDivision.jpg'>
            </div>

            <div class='floater' id='info'>
                <div class='list'>
                    <ul>
                        <li>Artist: Joy Division</li>
                        <li>Song title: Disorder</li>
                        <li>Year of release: 1979</li>
                        <li>Genre: Post Punk</li>
                        <li><a href='https://youtu.be/Q4liMrj1_m8'>Listen on Youtube</a></li>
                    </ul>
                </div>
            </div>
        </div>";

        $input = [
            [
            'band' => 'Joy Division',
            'song' => 'Disorder',
            'year' => '1979',
            'genre' => 'Post Punk',
            'link' => 'https://youtu.be/Q4liMrj1_m8',
            'image' => 'joyDivision.jpg'
            ]
        ];
        $case = displayRecords($input);
        $this->assertEquals($expected, $case);
    }

    public function testFailureDisplayRecords()
    {
        $expected = "<div class='surround'>
            <div class='floater' id='band'>
                <img src='joyDivision.jpg'>
            </div>

            <div class='floater' id='info'>
                <div class='list'>
                    <ul>
                        <li>Artist: Joy Division</li>
                        <li>Song title: Disorder</li>
                        <li>Year of release: N/A</li>
                        <li>Genre: Post Punk</li>
                        <li><a href='https://youtu.be/Q4liMrj1_m8'>Listen on Youtube</a></li>
                    </ul>
                </div>
            </div>
        </div>";

        $input = [
            [
                'band' => 'Joy Division',
                'song' => 'Disorder',
                'year' => '1915',
                'genre' => 'Post Punk',
                'link' => 'https://youtu.be/Q4liMrj1_m8',
                'image' => 'joyDivision.jpg'
            ]
        ];
        $case = displayRecords($input);
        $this->assertEquals($expected, $case);
    }


    public function testMalformedDisplayRecords()
    {

        $this->expectException(TypeError::class);
        $input = 53675376;
        $case = displayRecords($input);
    }

}


