package newpcsoftapp



import org.junit.*
import grails.test.mixin.*

@TestFor(DistributorController)
@Mock(Distributor)
class DistributorControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/distributor/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.distributorInstanceList.size() == 0
        assert model.distributorInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.distributorInstance != null
    }

    void testSave() {
        controller.save()

        assert model.distributorInstance != null
        assert view == '/distributor/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/distributor/show/1'
        assert controller.flash.message != null
        assert Distributor.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/distributor/list'

        populateValidParams(params)
        def distributor = new Distributor(params)

        assert distributor.save() != null

        params.id = distributor.id

        def model = controller.show()

        assert model.distributorInstance == distributor
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/distributor/list'

        populateValidParams(params)
        def distributor = new Distributor(params)

        assert distributor.save() != null

        params.id = distributor.id

        def model = controller.edit()

        assert model.distributorInstance == distributor
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/distributor/list'

        response.reset()

        populateValidParams(params)
        def distributor = new Distributor(params)

        assert distributor.save() != null

        // test invalid parameters in update
        params.id = distributor.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/distributor/edit"
        assert model.distributorInstance != null

        distributor.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/distributor/show/$distributor.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        distributor.clearErrors()

        populateValidParams(params)
        params.id = distributor.id
        params.version = -1
        controller.update()

        assert view == "/distributor/edit"
        assert model.distributorInstance != null
        assert model.distributorInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/distributor/list'

        response.reset()

        populateValidParams(params)
        def distributor = new Distributor(params)

        assert distributor.save() != null
        assert Distributor.count() == 1

        params.id = distributor.id

        controller.delete()

        assert Distributor.count() == 0
        assert Distributor.get(distributor.id) == null
        assert response.redirectedUrl == '/distributor/list'
    }
}
