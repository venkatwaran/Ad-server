<!DOCTYPE html>  
<html>  
<script type="text/javascript" src="scripts/angular.min.js"></script>  
<body>  
<div ng-app="" ng-init="firstName='Ajeet'">  
<p>Input something in the input box:</p>  
<p>Name: <input type="text" ng-model="firstName"></p>  
<p>You wrote: {{ firstName }}</p>  
</div>  
</body>  
</html>  
