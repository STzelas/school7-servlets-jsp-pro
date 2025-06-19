package gr.aueb.cf.schoolapp.dao;

import gr.aueb.cf.schoolapp.exceptions.StudentDAOException;
import gr.aueb.cf.schoolapp.model.Student;

import java.util.List;

// todo
public class StudentDAOImpl implements IStudentDAO{
    @Override
    public Student insert(Student student) throws StudentDAOException {
        return null;
    }

    @Override
    public Student update(Student student) throws StudentDAOException {
        return null;
    }

    @Override
    public void delete(Integer id) throws StudentDAOException {

    }

    @Override
    public Student getById(Integer id) throws StudentDAOException {
        return null;
    }

    @Override
    public List<Student> getAll() throws StudentDAOException {
        return List.of();
    }

    @Override
    public Student getByUUID(String uuid) throws StudentDAOException {
        return null;
    }

    @Override
    public List<Student> getByLastname(String lastname) throws StudentDAOException {
        return List.of();
    }

    @Override
    public Student getTeacherByVat(String vat) throws StudentDAOException {
        return null;
    }

    @Override
    public List<Student> getFilteredStudents(String firstname, String lastname) throws StudentDAOException {
        return List.of();
    }
}
