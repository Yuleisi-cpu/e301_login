import 'package:e301_login/providers/auth_provider.dart';
import 'package:e301_login/ui/views/analytic_view.dart';
import 'package:e301_login/ui/views/black_view.dart';
import 'package:e301_login/ui/views/campaigns_view.dart';
import 'package:e301_login/ui/views/categories_view.dart';
import 'package:e301_login/ui/views/costumers_view.dart';
import 'package:e301_login/ui/views/dashboard_view.dart';
import 'package:e301_login/ui/views/discount_view.dart';
import 'package:e301_login/ui/views/icons_views.dart';
import 'package:e301_login/ui/views/login_view.dart';
import 'package:e301_login/ui/views/marketing_view.dart';
import 'package:e301_login/ui/views/products_view.dart';
import 'package:e301_login/ui/views/asesorias_view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

// Inicio
class DashboardHandlers {

  static Handler dashboard = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return DashboardView();
      } else {
        return LoginView();
      }
    }
  );

  static Handler icons = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return IconsViews();
      } else {
        return LoginView();
      }
    }
  );

  static Handler analytic = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return AnalyticView();
      } else {
        return LoginView();
      }
    }
  );

  static Handler categories = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return CategoriesView();
      } else {
        return LoginView();
      }
    }
  );

  // Productos
  static Handler products = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return ProductsView();
      } else {
        return LoginView();
      }
    }
  );

  static Handler discount = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return DiscountView();
      } else {
        return LoginView();
      }
    }
  );

  static Handler costumers = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return CustomersView();
      } else {
        return LoginView();
      }
    }
  );

  //  ASESORÍAS (NUEVO)
  static Handler asesorias = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return const AsesoriasView();
      } else {
        return LoginView();
      }
    }
  );

  static Handler marketing = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return MarketingView();
      } else {
        return LoginView();
      }
    }
  );

  static Handler campaigns = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return CampaignsView();
      } else {
        return LoginView();
      }
    }
  );

  // Nosotros
  static Handler black = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.authenticated) {
        return const NosotrosView();
      } else {
        return LoginView();
      }
    },
  );
}