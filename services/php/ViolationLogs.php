<?php

require_once('../../config/database.php');
require_once('../../includes/utils/php/jsonEncoder.inc.php');

class ViolationLogs extends DataBaseHost
{
    private $vID;

    public function __construct($vID)
    {
        $this->vID = $vID;
    }

    public function fetchRecord()
    {

        try {
            $conn = $this->connect();
            $conn->beginTransaction();

            $sql = "SELECT * FROM violationLogs WHERE violationLogID = :vID";

            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':vID', $this->vID);

            $stmt->execute();
            $conn->commit();

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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $log = new ViolationLogs($_POST['vID']);

    $log->fetchRecord();
}
