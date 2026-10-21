import os
import platform
import datetime

def run_inspector():
    print("==========================================")
    print("      SECURITY & SYSTEM INSPECTOR         ")
    print("==========================================")
    
    # 1. System Information
    print(f"\n[+] Timestamp: {datetime.datetime.now()}")
    print(f"[+] OS System: {platform.system()} ({platform.release()})")
    print(f"[+] Node Name: {platform.node()}")
    print(f"[+] Architecture: {platform.machine()}")
    
    # 2. Check Active User & Privileges
    user = os.popen('whoami').read().strip()
    print(f"\n[+] Active Shell User: {user}")
    
    # 3. Quick Network Check
    print("\n[+] Checking Local IP Configuration:")
    ip_info = os.popen('hostname -I').read().strip()
    print(f"    Local IP Address(es): {ip_info if ip_info else 'Not found'}")
    
    print("\n==========================================")
    print("        INSPECTION COMPLETE               ")
    print("==========================================")

if __name__ == "__main__":
    run_inspector()
