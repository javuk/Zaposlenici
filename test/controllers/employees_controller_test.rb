require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference("Employee.count") do
      post employees_url, params: { employee: { broj_dana_godisnjeg_odmora: @employee.broj_dana_godisnjeg_odmora, broj_dana_placenog_dopusta: @employee.broj_dana_placenog_dopusta, broj_slobodnih_dana: @employee.broj_slobodnih_dana, godina_rodjenja: @employee.godina_rodjenja, ime: @employee.ime, odjel: @employee.odjel, pocetak_rada: @employee.pocetak_rada, prezime: @employee.prezime, spol: @employee.spol, trajanje_ugovora: @employee.trajanje_ugovora, vrsta_ugovora: @employee.vrsta_ugovora } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { broj_dana_godisnjeg_odmora: @employee.broj_dana_godisnjeg_odmora, broj_dana_placenog_dopusta: @employee.broj_dana_placenog_dopusta, broj_slobodnih_dana: @employee.broj_slobodnih_dana, godina_rodjenja: @employee.godina_rodjenja, ime: @employee.ime, odjel: @employee.odjel, pocetak_rada: @employee.pocetak_rada, prezime: @employee.prezime, spol: @employee.spol, trajanje_ugovora: @employee.trajanje_ugovora, vrsta_ugovora: @employee.vrsta_ugovora } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference("Employee.count", -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
