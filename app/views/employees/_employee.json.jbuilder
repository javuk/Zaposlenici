json.extract! employee, :id, :ime, :prezime, :spol, :godina_rodjenja, :pocetak_rada, :vrsta_ugovora, :trajanje_ugovora, :odjel, :broj_dana_godisnjeg_odmora, :broj_slobodnih_dana, :broj_dana_placenog_dopusta, :created_at, :updated_at
json.url employee_url(employee, format: :json)
