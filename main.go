package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
)

type Empresa struct {
	Id         int
	Name       string
	Fundacion  string
	Valoracion float32
	Created    string
	Update     string
}

func dbConn() (db *sql.DB) {
	dbDriver := "mysql"
	dbUser := "root"
	dbPass := ""
	dbName := "mydb_crud"
	db, err := sql.Open(dbDriver, dbUser+":"+dbPass+"@/"+dbName)
	if err != nil {
		panic(err.Error())
	}
	return db
}

func main() {
	fmt.Println("Server start 5050")

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		//fmt.Fprintf(w, "Hola mundo desde mi servidor web con Go")

		db := dbConn()
		selDB, err := db.Query("SELECT * FROM empresa")
		if err != nil {
			panic(err.Error())
		}

		emp := Empresa{}
		res := []Empresa{}
		for selDB.Next() {
			var id int
			var name, fundacion string
			var valoracion float32
			var created, update string
			err = selDB.Scan(&id, &name, &fundacion, &valoracion, &created, &update)
			if err != nil {
				panic(err.Error())
			}
			emp.Id = id
			emp.Name = name
			emp.Fundacion = fundacion
			emp.Valoracion = valoracion
			emp.Created = created
			emp.Update = update
			res = append(res, emp)

		}
		fmt.Println(res)
		w.Header().Set("Content Type", "aplication/json")
		w.WriteHeader(200)
		json.NewEncoder(w).Encode(res)

		defer db.Close()
	})

	server := http.ListenAndServe(":5050", nil)

	log.Fatal(server)

}
