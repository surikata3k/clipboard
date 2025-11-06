import os
import subprocess
import glob

# Buscar claves públicas en ~/.ssh/
ssh_dir = os.path.expanduser("~/.ssh")
pubkey_files = glob.glob(os.path.join(ssh_dir, "*.pub"))

if not pubkey_files:
    raise FileNotFoundError("❌ No se encontró ninguna clave pública en ~/.ssh/")

# Mostrar claves encontradas
print("🔑 Claves públicas encontradas:")
for i, path in enumerate(pubkey_files):
    print(f"{i + 1}. {os.path.basename(path)}")

# Seleccionar clave
choice = input(f"Selecciona una clave (1-{len(pubkey_files)}), o presiona Enter para usar la primera: ")
try:
    selected_index = int(choice) - 1 if choice else 0
    selected_key_path = pubkey_files[selected_index]
except (ValueError, IndexError):
    raise ValueError("❌ Selección inválida.")

# Leer la clave pública
with open(selected_key_path, 'r') as f:
    public_key = f.read().strip()

# Datos del servidor remoto
remote_host = input("Dirección del servidor remoto (ej. usuario@host): ")
remote_port = input("Puerto SSH (por defecto 22): ") or "22"

# Comando SSH para añadir la clave
ssh_command = (
    f'ssh -p {remote_port} {remote_host} '
    f'"mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo \'{public_key}\' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"'
)

# Ejecutar el comando
try:
    subprocess.run(ssh_command, shell=True, check=True)
    print(f"✅ Clave {os.path.basename(selected_key_path)} añadida correctamente al servidor remoto.")
except subprocess.CalledProcessError as e:
    print(f"❌ Error al ejecutar el comando SSH: {e}")
