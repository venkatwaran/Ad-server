<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="scripts/angular.min.js"></script>
<script type="text/javascript">
    
    
    
    angular.module('AdApp', [])
    .controller('AdController', ['$scope', function($scope) {
      $scope.list = [];
      $scope.text = 'hello';
      $scope.submit = function() {
    	  alert($scope.partner_id);
    	  alert($scope.duration);
    	  alert($scope.ad_content);
        if ($scope.text) {
          $scope.list.push(this.text);
          $scope.text = '';
        }
      };
    }]);
</script>
</head>
<body ng-app="AdApp">
<form ng-submit="submit()" ng-controller="AdController">
  Partner Id:
  <input type="text" ng-model="partner_id" name="partner_id" />
  Duration:
  <input type="text" ng-model="duration" name="duration" />
  Ad Content:
  <input type="text" ng-model="ad_content" name="ad_content" />
  <input type="text" ng-model="text" name="text" />
  <input type="submit" id="submit" value="Submit" />
  <pre>list={{list}}</pre>
  Partner Id:<ng-display>{{partner_id}}</ng-display>
  Duration:<ng-display>{{duration}}</ng-display>
  Ad Content:<ng-display>{{ad_content}}</ng-display>
</form>
</body>
</html>