<?php
require '../vendor/autoload.php';

use Slim\Factory\AppFactory;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

$app = AppFactory::create();

// Sample data storage (in-memory array for demonstration purposes)
$userProfiles = [];

// Create User Profile
$app->post('/api/users', function (Request $request, Response $response, $args) use ($userProfiles) {
    $data = $request->getParsedBody();
    
    // Validate input data (you should add more validation)
    if (!isset($data['name']) || !isset($data['email'])) {
        return $response->withStatus(400)->withJson(['error' => 'Invalid input data']);
    }

    // Create a new user profile
    $userId = uniqid(); // Generate a unique ID (you might want to use a better method in production)
    $userProfiles[$userId] = [
        'id' => $userId,
        'name' => $data['name'],
        'email' => $data['email'],
    ];

    return $response->withJson($userProfiles[$userId]);
});

// Read User Profile
$app->get('/api/users/{userId}', function (Request $request, Response $response, $args) use ($userProfiles) {
    $userId = $args['userId'];

    // Check if the user profile exists
    if (!isset($userProfiles[$userId])) {
        return $response->withStatus(404)->withJson(['error' => 'User profile not found']);
    }

    return $response->withJson($userProfiles[$userId]);
});

// Update User Profile
$app->put('/api/users/{userId}', function (Request $request, Response $response, $args) use ($userProfiles) {
    $userId = $args['userId'];
    $data = $request->getParsedBody();

    // Check if the user profile exists
    if (!isset($userProfiles[$userId])) {
        return $response->withStatus(404)->withJson(['error' => 'User profile not found']);
    }

    // Update user profile data
    $userProfiles[$userId]['name'] = $data['name'] ?? $userProfiles[$userId]['name'];
    $userProfiles[$userId]['email'] = $data['email'] ?? $userProfiles[$userId]['email'];

    return $response->withJson($userProfiles[$userId]);
});

// Delete User Profile
$app->delete('/api/users/{userId}', function (Request $request, Response $response, $args) use ($userProfiles) {
    $userId = $args['userId'];

    // Check if the user profile exists
    if (!isset($userProfiles[$userId])) {
        return $response->withStatus(404)->withJson(['error' => 'User profile not found']);
    }

    // Delete user profile
    unset($userProfiles[$userId]);

    return $response->withJson(['message' => 'User profile deleted successfully']);
});

$app->run();
