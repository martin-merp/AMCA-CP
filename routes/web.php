<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

Auth::routes();

//RUTA PAGINA WEB
Route::get('/pagina_home', 'PaginaController@index')->name('pagina_home');
Route::get('/pagina_resultados/{texto_busqueda}', 'PaginaController@resultados')->name('pagina_resultados');
Route::post('/pagina_resultados2', 'PaginaController@resultados')->name('pagina_resultados2');
Route::get('/pagina_detalle/{id}/{tipo}', 'PaginaController@detalles')->name('pagina_detalle');



//RUTAS ADMINISTRADOR
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index')->name('home');

Route::get('/animales', 'AnimalesController@index')->name('animales');
Route::post('/guardar_animal', 'AnimalesController@guardar')->name('guardar_animal');
Route::post('/animal_eliminar', 'AnimalesController@eliminar')->name('animal_eliminar');

Route::get('/vegetales', 'VegetalesController@index')->name('vegetales');
Route::post('/vegetales_guardar', 'VegetalesController@guardar')->name('vegetales_guardar');
Route::post('/vegetales_eliminar', 'VegetalesController@eliminar')->name('vegetales_eliminar');

Route::get('/preparados', 'PreparadosController@index')->name('preparados');
Route::post('/preparados_guardar', 'PreparadosController@guardar')->name('preparados_guardar');
Route::post('/preparados_eliminar', 'PreparadosController@eliminar')->name('preparados_eliminar');

Route::get('/agricultores', 'AgricultoresController@index')->name('agricultores');
Route::post('/agricultores_guardar', 'AgricultoresController@guardar')->name('agricultores_guardar');
Route::post('/agricultores_eliminar', 'AgricultoresController@eliminar')->name('agricultores_eliminar');

Route::get('/finca', 'FincaController@index')->name('finca');
Route::post('/finca_guardar', 'FincaController@guardar')->name('finca_guardar');
Route::post('/finca_eliminar', 'FincaController@eliminar')->name('finca_eliminar');

Route::get('/listados', 'ListadosController@index')->name('listados');

Route::get('/fincas_agircultor/{id_agricultor}', 'AgricultoresController@get_agricultor_fincas')->name('fincas_agircultor');
Route::post('/fincas_agricultor_guardar', 'AgricultoresController@fincas_agricultor_guardar')->name('fincas_agricultor_guardar');
Route::post('/fincas_agricultor_eliminar', 'AgricultoresController@fincas_agricultor_eliminar')->name('fincas_agricultor_eliminar');

Route::get('/animales_agircultor/{id_agricultor}', 'AgricultoresController@get_agricultor_animales')->name('animales_agircultor');
Route::post('/animales_agricultor_guardar', 'AgricultoresController@animales_agricultor_guardar')->name('animales_agricultor_guardar');
Route::post('/animales_agricultor_eliminar', 'AgricultoresController@animales_agricultor_eliminar')->name('animales_agricultor_eliminar');

Route::get('/vegetales_agircultor/{id_agricultor}', 'AgricultoresController@get_agricultor_vegetales')->name('vegetales_agircultor');
Route::post('/vegetales_agricultor_guardar', 'AgricultoresController@vegetales_agricultor_guardar')->name('vegetales_agricultor_guardar');
Route::post('/vegetales_agricultor_eliminar', 'AgricultoresController@vegetales_agricultor_eliminar')->name('vegetales_agricultor_eliminar');

Route::get('/preparados_agircultor/{id_agricultor}', 'AgricultoresController@get_agricultor_preparados')->name('preparados_agricultor');
Route::post('/preparados_agricultor_guardar', 'AgricultoresController@preparados_agricultor_guardar')->name('preparados_agricultor_guardar');
Route::post('/preparados_agricultor_eliminar', 'AgricultoresController@preparados_agricultor_eliminar')->name('preparados_agricultor_eliminar');