<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About The Project

# Adminpanel to manage companies

Simple project to manage companies and their employees. Mini-CRM.
 
1. Basic Laravel Auth: ability to log in as administrator 
2. Used database seeds to create first user with email admin@admin.com and password “password” 
3. CRUD functionality (Create / Read / Update / Delete) for two menu items: ​Companies​ and ​Employees​. 
4. Companies DB table consists of these fields: Name (required), email, logo (minimum 100×100), website 
5. Employees DB table consists of these fields: First name (required), last name (required), Company (foreign key to Companies), email, phone 
6. Used database migrations to create those schemas above 
7. Used basic Laravel resource controllers with default methods – index, create, store etc. 
8. Used Laravel’s validation function, using Request classes 
9. Used Laravel’s pagination for showing Companies/Employees list, 10 entries per page 
10. Used Laravel ​make:auth​ as default Bootstrap-based design theme, but removed ability to register 

## License

Project is open-sourced for learning pourpose licensed under the [MIT license](https://opensource.org/licenses/MIT).
