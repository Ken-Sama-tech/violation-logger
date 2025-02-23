<?php

require_once('../../config/database.php');
require_once('../../includes/utils/php/jsonEncoder.inc.php');

class CheckStudentDataBeforeEdit extends DataBaseHost
{
    private $std_lrn;

    public function __construct($std_lrn)
    {
        $this->std_lrn = $std_lrn;
    }

    public function checkStdLrn()
    {
        try {

            $conn = $this->connect();
            $conn->beginTransaction();

            $sql = "SELECT * FROM `studentInfo` WHERE learnerReferenceNumber = :lrn";

            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':lrn', $this->std_lrn, PDO::PARAM_INT);
            $stmt->execute();
            $result = [];

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $result = $row;
            }

            JsonEncoder::jsonEncode($result);
        } catch (Exception $e) {
            JsonEncoder::jsonEncode(['error' => $e->getMessage()]);
        }
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $std_lrn = $_POST['lrn'];
    $check_lrn = new CheckStudentDataBeforeEdit($std_lrn);
    $check_lrn->checkStdLrn();
}
