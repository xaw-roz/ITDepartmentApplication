import itdepartment1.SecRole
import itdepartment1.SecUser
import itdepartment1.SecUserSecRole
import itdepartment1.User

class BootStrap {

    def init = { servletContext ->
        def adminRole = new SecRole(authority: 'ROLE_ADMIN').save()
        def userRole = new SecRole(authority: 'ROLE_USER').save()

        def testUser = new SecUser(username: 'saroj', password: 'admin',firstName: 'Saroj',lastName: 'Shrestha',emailAddress: 'rockstar.saroj@gmail.com').save()
        def test = new SecUser(username: 'a', password: 'admin',firstName: 'Saroj',lastName: 'Shrestha',emailAddress: 'rockstar.saroj@gmail.com').save()



        SecUserSecRole.create(testUser, adminRole)
        SecUserSecRole.create(test, userRole)

        SecUserSecRole.withSession {
            it.flush()
            it.clear()
        }


    }
    def destroy = {
    }
}
