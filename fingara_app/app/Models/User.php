<?php

namespace App\Models; // Add this line to specify the namespace

use Illuminate\Database\Eloquent\Model; // Import the Model class

class User extends Model
{
    // Other methods...

    public function attributes()
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ]; // Close the method here
    } // Close the attributes method properly

    public function facility()
    {
        return $this->hasOne(Facility::class, 'facilities_id');
    }

    // Add other methods as necessary
}
