<x-guest-layout>
    <style>
        .form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            background: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .form-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
            text-align: center;
        }

        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border-color 0.3s ease;
        }

        .form-container input[type="text"]:focus,
        .form-container input[type="email"]:focus,
        .form-container input[type="password"]:focus {
            border-color: #3182ce;
            outline: none;
        }

        .form-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }

        .form-actions a {
            color: #3182ce;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .form-actions a:hover {
            color: #225d9c;
        }

        .form-actions button {
            background: #3182ce;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-actions button:hover {
            background: #225d9c;
        }
    </style>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <div class="form-container">
        <h2>{{ __('Register') }}</h2>
        <form method="POST" action="{{ route('register') }}">
            @csrf

            <!-- Name -->
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" type="text" name="name" :value="old('name')" required/>
            <x-input-error :messages="$errors->get('name')" class="mt-2" />

            <!-- Email Address -->
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" type="email" name="email" :value="old('email')" required/>
            <x-input-error :messages="$errors->get('email')" class="mt-2" />

            <!-- Phone -->
            <x-input-label for="phone" :value="__('Phone')" />
            <x-text-input id="phone" type="text" name="phone" :value="old('phone')" required/>
            <x-input-error :messages="$errors->get('phone')" class="mt-2" />

            <!-- Address -->
            <x-input-label for="address" :value="__('Address')" />
            <x-text-input id="address" type="text" name="address" :value="old('address')" required/>
            <x-input-error :messages="$errors->get('address')" class="mt-2" />

            <!-- Password -->
            <x-input-label for="password" :value="__('Password')" />
            <x-text-input id="password" type="password" name="password" required autocomplete="off"/>
            <x-input-error :messages="$errors->get('password')" class="mt-2" />


            <!-- Confirm Password -->
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />
            <x-text-input id="password_confirmation" type="password" name="password_confirmation" required/>
            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />

            <div class="form-actions mt-4">
                <a href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-primary-button>
                    {{ __('Register') }}
                </x-primary-button>
            </div>
        </form>
    </div>
</x-guest-layout>
