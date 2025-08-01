import flet as ft

from flet_mrc_scanner import FletMrcScanner


def main(page: ft.Page):
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER

    page.add(

                ft.Container(height=150, width=300, alignment = ft.alignment.center, bgcolor=ft.Colors.PURPLE_200, content=FletMrcScanner(
                    tooltip="My new FletMrcScanner Control tooltip",
                    value = "My new FletMrcScanner Flet Control", 
                ),),

    )


ft.app(main)
