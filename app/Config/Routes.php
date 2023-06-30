<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
$routes->get('home', 'Home::home');
// $routes->get('buku', 'Home::buku');

$routes->get('/login', 'Login::index');
$routes->post('/login/authenticate', 'Login::authenticate');
// $routes->get('/dashboard', 'Home::dashboard');
$routes->get('/register', 'Register::index');
$routes->post('/register/tambah', 'Register::tambah');
$routes->group('dashboard', function ($routes) {
    $routes->get('/', 'Dashboard::index');
    $routes->group('buku', function ($routes) {
        $routes->get('/', 'Buku::index');
        $routes->get('tambah', 'Buku::tambah');
        $routes->post('tambah', 'Buku::save');
        $routes->get('edit/(:num)', 'Buku::edit/$1');
        $routes->post('edit/(:num)', 'Buku::update/$1');
        $routes->get('delete/(:num)', 'Buku::delete/$1');
    });
    $routes->group('anggota', function ($routes) {
        $routes->get('/', 'Anggota::index');
        $routes->get('tambah', 'Anggota::create');
        $routes->post('tambah', 'Anggota::store');
        $routes->get('edit/(:num)', 'Anggota::edit/$1');
        $routes->post('edit/(:num)', 'Anggota::update/$1');
        $routes->get('delete/(:num)', 'Anggota::delete/$1');
    });
    $routes->group('peminjaman', function ($routes) {
        $routes->get('/', 'Peminjaman::index');
        $routes->get('tambah', 'Peminjaman::create');
        $routes->post('tambah', 'Peminjaman::store');
        $routes->get('edit/(:num)', 'Peminjaman::editPeminjaman/$1');
        $routes->post('edit/(:num)', 'Peminjaman::updatePeminjaman/$1');
        $routes->get('delete/(:num)', 'Peminjaman::deletePeminjaman/$1');
    });
    $routes->group('pengembalian', function ($routes) {
        $routes->get('/', 'Pengembalian::index');
        $routes->get('denda/(:any)', 'Pengembalian::denda/$1');
        $routes->get('tambah', 'Pengembalian::create');
        $routes->post('tambah', 'Pengembalian::store');
        $routes->get('edit/(:num)', 'Pengembalian::editPengembalian/$1');
        $routes->post('edit/(:num)', 'Pengembalian::updatePengembalian/$1');
        $routes->get('delete/(:num)', 'Pengembalian::deletePengembalian/$1');
    });
});





/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
