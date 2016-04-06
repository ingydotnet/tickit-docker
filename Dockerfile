FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        curl \
        libtool \
        libncurses5-dev \
        pkg-config \
&& \
    curl -L https://cpanmin.us | perl - --sudo App::cpanminus

RUN cpanm ExtUtils::PkgConfig List::UtilsBy Struct::Dumb

RUN apt-get install -y gist vim

RUN cpanm \
    Tickit \
    Tickit::Builder \
    Tickit::Console \
    Tickit::DSL \
    Tickit::Widgets

RUN cpanm \
    Tickit::Widget::Border \
    Tickit::Widget::Box \
    Tickit::Widget::Breadcrumb \
    Tickit::Widget::Button \
    Tickit::Widget::Calendar::MonthView \
    Tickit::Widget::CheckButton \
    Tickit::Widget::Choice \
    Tickit::Widget::Decoration \
    Tickit::Widget::Entry \
    Tickit::Widget::Figlet \
    Tickit::Widget::FileViewer \
    Tickit::Widget::Fill \
    Tickit::Widget::FloatBox \
    Tickit::Widget::Frame \
    Tickit::Widget::GridBox \
    Tickit::Widget::HBox \
    Tickit::Widget::HSplit \
    Tickit::Widget::Layout::Desktop \
    Tickit::Widget::Layout::Relative \
    Tickit::Widget::LinearBox \
    Tickit::Widget::LinearSplit \
    Tickit::Widget::LogAny \
    Tickit::Widget::Menu \
    Tickit::Widget::MenuBar \
    Tickit::Widget::Menu::Item \
    Tickit::Widget::Placegrid \
    Tickit::Widget::Progressbar \
    Tickit::Widget::RadioButton \
    Tickit::Widget::ScrollBox \
    Tickit::Widget::Scroller \
    Tickit::Widget::SegmentDisplay \
    Tickit::Widget::SparkLine \
    Tickit::Widget::Spinner \
    Tickit::Widget::Static \
    Tickit::Widget::Statusbar \
    Tickit::Widget::Tabbed \
    Tickit::Widget::Table \
    Tickit::Widget::Table::Paged \
    Tickit::Widget::Tree \
    Tickit::Widget::VBox \
    Tickit::Widget::VHBox \
    Tickit::Widget::VSplit

# This fails:
#   Installed version (0.20) of Tickit::Widget::Scroller is not in range '0.22'
# RUN cpanm Task::Tickit::Widget

# Failing:
#     Tickit::Async
