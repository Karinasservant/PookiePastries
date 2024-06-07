<x-guest-layout>
    <style>
        .form-container {
            max-width: 500px;
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

        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border-color 0.3s ease;
        }

        .form-container input[type="email"]:focus,
        .form-container input[type="password"]:focus {
            border-color: #3182ce;
            outline: none;
        }

        .remember-me-label {
            display: flex;
            align-items: right;
            justify-content: right;
            margin: 15px 0;
            text-align: center;
        }

        .remember-me-label input {
            margin-right: 0.5rem;
        }
        .fyp {
            position: relative;
            bottom: 50px;
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
        .mt-45 {
            text-align: center;
        }
    </style>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <div class="form-container">
        <h2>{{ __('Login') }}</h2>
        <form method="POST" action="{{ route('login') }}">
            @csrf

            <!-- Email Address -->
            <div>
                <x-input-label for="email" :value="__('Email')" />
                <x-text-input id="email" type="email" name="email" :value="old('email')" required autocomplete="off"/>
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

<!-- Password -->
            <div class="mt-4">
                <x-input-label for="password" :value="__('Password')" />
                <x-text-input id="password" type="password" name="password" required autocomplete="off"/>
                <x-input-error :messages="$errors->get('password')" class="mt-2" />
            </div>


            <!-- Remember Me -->
            <div class="remember-me-label mt-4">
                <input id="remember_me" type="checkbox" class="rounded border-gray-300 text-indigo-600 shadow-sm focus:ring-indigo-500" name="remember">
                <span class="text-sm text-gray-600">{{ __('Remember me') }}</span>
            </div>

            <div class="form-actions mt-4">
                @if (Route::has('password.request'))
                    <a class="fyp" href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                @endif

                <x-primary-button >
                    {{ __('Log in') }}
                </x-primary-button>
            </div>
        </form>

        <div class="mt-45">
            <p>Don't have an account? <a href="{{ route('register') }}" class="text-indigo-600 hover:underline">Register here</a></p>
        </div>
    </div>
</x-guest-layout>