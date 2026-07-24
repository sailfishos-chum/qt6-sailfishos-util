Name: qt6-sailfishos-util
# This version MUST remain in sync with Qt6 versions!
Version: 1.0.0
Release: 1%{?dist}
Summary: Qt6 sailfish utility scripts
License: GPL-3.0-only
URL:     https://github.com/sailfishos-chum
Source0: %{name}-%{version}.tar.bz2

Requires: kf6-qqc2-breeze-style
Requires: kf6-kirigami

%description
%{summary}.

%prep
%setup -q

%install
# See macros.qt6 where the directories are specified

install -Dpm755 qt6-start.sh      %{buildroot}%{_bindir}/qt6-start.sh
install -Dpm644 99-qt6.conf %{buildroot}/var/lib/environment/nemo/99-qt6.conf

%files
%{_bindir}/qt6-start.sh
%{_sysconfdir}/profile.d/qt6-start-env.sh
