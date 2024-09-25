<?php

namespace App\Policies;

use App\Models\Classroom;
use App\Models\User;
use Illuminate\Auth\Access\Response;

// class ClassroomPolicy
// {
    
//     public function viewAny(User $user): bool
//     {
//         if($user->can('classroom'))
//             return true;
//         else
//             return false;
//     }

    
//     public function view(User $user, Classroom $classroom): bool
//     {
//         if(auth()->user()->can('classroom'))
//             return true;
//         else
//             return false;
//     }

    
//     public function create(User $user): bool
//     {
//         if(auth()->user()->can('classroom'))
//             return true;
//         else
//             return false;
//     }

    
//     public function update(User $user, Classroom $classroom): bool
//     {
//         if(auth()->user()->can('classroom'))
//             return true;
//         else
//             return false;
//     }

    
//     public function delete(User $user, Classroom $classroom): bool
//     {
//         if(auth()->user()->can('classroom'))
//             return true;
//         else
//             return false;
//     }

    
//     public function restore(User $user, Classroom $classroom): bool
//     {
//         if(auth()->user()->can('classroom'))
//             return true;
//         else
//             return false;
//     }

    
//     public function forceDelete(User $user, Classroom $classroom): bool
//     {
//         if(auth()->user()->can('classroom'))
//             return true;
//         else
//             return false;
//     }
// }