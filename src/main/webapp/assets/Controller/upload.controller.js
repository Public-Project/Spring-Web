(function () {
	'use strict';
 
	angular
		.module('app')
		.controller('uploadController', uploadController);
 
	uploadController.$inject = ['$location','$scope','fileupload','activepageInfo' ,'AuthenticationService', 'FlashService'];
	
	angular.module("app").service("fileupload",['$http',function ($http){
		this.uploadFileUrl=function(file,uploadUrl){
			var fd = new FormData();
			fd.append('file', file);
			$http.post(uploadUrl, fd, {
				transformRequest: angular.identity,
				headers: {'Content-Type': undefined}
			})
			.success(function(){
				alert("success");
			})
			.error(function(){
				alert("error");
			});
		}
	}]);
	function uploadController($location,$scope,fileupload,activepageInfo){
		activepageInfo.name = 'upload';
		var file="";
		$scope.setFiles=function(element){
				file=element.files[0];
			}
		$scope.uploadFile=function(){
			var uploadUrl="uploadFile";
			fileupload.uploadFileUrl(file,uploadUrl);
		}
	}
  	

})();