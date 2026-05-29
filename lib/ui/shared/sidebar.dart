import 'package:e301_login/providers/auth_provider.dart';
import 'package:e301_login/providers/sidemenu_provider.dart';
import 'package:e301_login/router/router.dart';
import 'package:e301_login/services/navigation_service.dart';
import 'package:e301_login/ui/shared/widgets/logo.dart';
import 'package:e301_login/ui/shared/widgets/menu_item.dart';
import 'package:e301_login/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  void navigateTo(String routeName) {
    NavigationService.navigationTo(routeName);
    SidemenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          //Logo
          Logo(),
          SizedBox(height: 50),
          TextSeparator(text: 'Main'),
          //Opciones
          MenuItem(text: 'Inicio', icon: Icons.home_outlined, onPressed: ()=> navigateTo(Flurorouter.dashboardRoute)),
          MenuItem(text: 'Nosotros', icon: Icons.groups_outlined, onPressed: ()=> navigateTo(Flurorouter.dashboardRoute)),
          MenuItem(text: 'Destacados', icon: Icons.star_outline, onPressed: ()=> navigateTo(Flurorouter.analyticRoute)),
          MenuItem(text: 'Categorías', icon: Icons.grid_view_outlined, onPressed: ()=> navigateTo(Flurorouter.categoriesRoute)),
          MenuItem(text: 'Productos', icon: Icons.inventory_2_outlined, onPressed: ()=> navigateTo(Flurorouter.productsRoute)),
          MenuItem(text: 'Populares', icon: Icons.local_fire_department_outlined, onPressed: ()=> navigateTo(Flurorouter.discountRoute)),
          MenuItem(text: 'Provedores',icon: Icons.local_shipping_outlined, onPressed: ()=> navigateTo(Flurorouter.costumersRoute)),
          MenuItem(text: 'Asesorias',icon: Icons.park_outlined, onPressed: ()=> navigateTo(Flurorouter.costumersRoute)),
          SizedBox(height: 30),
          TextSeparator(text: 'UI Elements'),
          MenuItem(text: 'Icons', icon: Icons.list_alt_outlined, onPressed: ()=> navigateTo(Flurorouter.iconsRoute)),
          MenuItem(text: 'Marketing', icon: Icons.mark_email_read_outlined, onPressed: ()=> navigateTo(Flurorouter.marketingRoute)),
          MenuItem(text: 'Campaigns', icon: Icons.note_add_outlined, onPressed: ()=> navigateTo(Flurorouter.campaignsRoute)),
          MenuItem(text: 'Black', icon: Icons.post_add_outlined, onPressed: ()=> navigateTo(Flurorouter.blackRoute)),
          MenuItem(text: 'Salir', icon: Icons.exit_to_app_outlined, onPressed: ()=> Provider.of<AuthProvider>(context, listen: false).logout()),
        ],
      )
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xff092044),
        Color(0xff092042),
      ]
    ),

    boxShadow: [
      BoxShadow(
        color: Colors.black38,
        blurRadius: 10,
      )
    ]
  );
}