<?php
class Creneau{

    // database connection and table name
    private $conn;
    private $table_name = "creneau";

    // object properties
    public $id;
    public $created_at = null;
    public $updated_at = null;
    public $begin;
    public $end;
    public $nb;
    public $salle_id;

    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
        $this->created_at = new \DateTime();
        $this->updated_at = new \DateTime();
    }

    // read products
    function search($matieres, $lvl, $begin, $end){
        $matieres_name = [];
        foreach ($matieres as $m) {
            $matieres_name[] = "'" . $m['matiere'] . "'";
        }
        $matieressql = implode(',', array_values($matieres_name));

        $query = 'SELECT creneau.* from creneau INNER JOIN creneau_matiere ON creneau.id=creneau_matiere.creneau_id where creneau.begin >= "' . $begin . '" and creneau.end <= "' . $end . '" and creneau_matiere.lvl >= ' . $lvl . ' and creneau_matiere.matiere_id IN (SELECT matiere.id FROM matiere WHERE matiere.name IN (' . $matieressql .'))';

        $stmt = $this->conn->prepare($query);

        $stmt->execute();

        return $stmt;

    }

    // create product
    function create(){
        // query to insert record
        $query = "INSERT INTO
                " . $this->table_name . "
            SET
                created_at=:created_at,
                updated_at=:updated_at,
                nb=:nb,
                begin=:begin,
                end=:end,
                salle_id=:salle_id
                ";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // bind values
        $stmt->bindParam(':nb', $this->nb);
        $date = $this->created_at->format('Y-m-d H:i');
        $stmt->bindParam(':created_at', $date);
        $date = $this->updated_at->format('Y-m-d H:i');
        $stmt->bindParam(':updated_at', $date);
        $stmt->bindParam(':begin', $this->begin);
        $stmt->bindParam(':end', $this->end);
        $stmt->bindParam(':salle_id', $this->salle_id);

        // execute query
        if($stmt->execute()){
            return $this->conn->lastInsertId();
        }

        return false;
    }
}
?>