Controller.$inject = ['$location'];

function Controller($location) {
  var vm = this;
  vm.email = 'email';
  vm.password = 'password';
  vm.repassword = 'password';
  vm.register = register;
  vm.back = back;

  function register() {
  }

  function back() {
    $location.path('/login');
  }
}

var moduleName = 'registerController';

var config = {
  templateUrl : '/views/view-register.html',
  controller : moduleName,
  controllerAs : 'vm'
};

var registerController = {
  moduleName : moduleName,
  config : config,
  controller : Controller
};

export var registerController = registerController;
