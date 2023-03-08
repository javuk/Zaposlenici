require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Broj dana godisnjeg odmora", with: @employee.broj_dana_godisnjeg_odmora
    fill_in "Broj dana placenog dopusta", with: @employee.broj_dana_placenog_dopusta
    fill_in "Broj slobodnih dana", with: @employee.broj_slobodnih_dana
    fill_in "Godina rodjenja", with: @employee.godina_rodjenja
    fill_in "Ime", with: @employee.ime
    fill_in "Odjel", with: @employee.odjel
    fill_in "Pocetak rada", with: @employee.pocetak_rada
    fill_in "Prezime", with: @employee.prezime
    fill_in "Spol", with: @employee.spol
    fill_in "Trajanje ugovora", with: @employee.trajanje_ugovora
    fill_in "Vrsta ugovora", with: @employee.vrsta_ugovora
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Broj dana godisnjeg odmora", with: @employee.broj_dana_godisnjeg_odmora
    fill_in "Broj dana placenog dopusta", with: @employee.broj_dana_placenog_dopusta
    fill_in "Broj slobodnih dana", with: @employee.broj_slobodnih_dana
    fill_in "Godina rodjenja", with: @employee.godina_rodjenja
    fill_in "Ime", with: @employee.ime
    fill_in "Odjel", with: @employee.odjel
    fill_in "Pocetak rada", with: @employee.pocetak_rada
    fill_in "Prezime", with: @employee.prezime
    fill_in "Spol", with: @employee.spol
    fill_in "Trajanje ugovora", with: @employee.trajanje_ugovora
    fill_in "Vrsta ugovora", with: @employee.vrsta_ugovora
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
